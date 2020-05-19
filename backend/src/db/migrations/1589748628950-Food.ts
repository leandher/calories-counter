import { MigrationInterface, QueryRunner, Table } from "typeorm";

export class Food1589748628950 implements MigrationInterface {
  private table = new Table({
    name: 'foods',
    columns: [
      {
        name: 'id',
        type: 'integer',
        isPrimary: true,
        isGenerated: true,
        isUnique: true,
        generationStrategy: 'increment',
      },
      {
        name: 'display_name',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'portion_default',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'portion_amount',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'portion_display_name',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'factor',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'increment',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'multiplier',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'grains',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'whole_grains',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'vegetables',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'orange_vegetables',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'drkgreen_vegetables',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'starchy_vegetables',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'other_vegetables',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'fruits',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'milk',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'meats',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'soy',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'drybeans_peas',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'oils',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'solid_fats',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'added_sugars',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'alcohol',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'calories',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'saturated_fats',
        type: 'varchar',
        width: 255,
      },
      {
        name: 'created_at',
        type: 'timestamptz',
        isNullable: false,
        default: 'now()',
      },
      {
        name: 'updated_at',
        type: 'timestamptz',
        isNullable: false,
        default: 'now()',
      }
    ]
  })

  public async up(queryRunner: QueryRunner): Promise<any> {
    await queryRunner.createTable(this.table)
  }

  public async down(queryRunner: QueryRunner): Promise<any> {
    await queryRunner.dropTable(this.table)
  }

}
