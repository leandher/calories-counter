import { MigrationInterface, QueryRunner } from 'typeorm'

export class Foods1589822614545 implements MigrationInterface {
  public async up (queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`
    update 
      foods 
    set 
      display_name = dn.name
    from (
      select id , Replace(display_name, '"', '''') as name from foods where display_name like '%"%'
    ) as dn
    where foods.id = dn.id
    `)
  }

  public async down (): Promise<void> {
    // TO Implement
  }
}
