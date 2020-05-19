import { MigrationInterface, QueryRunner } from "typeorm"
import { resolve } from 'path'
import { readFileSync } from 'fs'

export class Foods1589759413862 implements MigrationInterface {

  public async up(queryRunner: QueryRunner): Promise<any> {
    const table = await queryRunner.getTable('foods')
    const columns: string[] = table.columns.map(column => column.name)
      .filter(column => ['id', 'created_at', 'updated_at'].every(col => col !== column))

    const foodData = JSON.parse(readFileSync(resolve(__dirname, 'Food_Display_Table.json'), 'utf8'))

    await Promise.all(foodData.map(async (food) => {
      const keyMap = Object.keys(food).map(key => ({ [key.toLowerCase()]: key }))
      const values = columns
        .map(column => food[keyMap.find(key => key[column])?.[column]])
        .map(value => value?.replace("'", '"'))
      await queryRunner.query(`INSERT INTO foods (${columns.join(',')}) values ('${values.join("','")}')`)
      return food
    }))
  }

  public async down(queryRunner: QueryRunner): Promise<any> {
  }

}
