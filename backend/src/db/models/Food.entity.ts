import { Entity, Column, PrimaryGeneratedColumn, UpdateDateColumn, CreateDateColumn } from "typeorm";

@Entity({ name: 'foods' })
export class Food {

  @PrimaryGeneratedColumn()
  id: number;

  @Column({ name: 'display_name' })
  displayName: string

  @Column({ name: 'portion_default' })
  portionDefault: string

  @Column({ name: 'portion_amount' })
  portionAmount: string

  @Column({ name: 'portion_display_name' })
  portionDisplayName: string

  @Column()
  factor: string

  @Column()
  increment: string

  @Column()
  multiplier: string

  @Column()
  grains: string

  @Column({ name: 'whole_grains' })
  wholeGrains: string

  @Column()
  vegetables: string

  @Column({ name: 'orange_vegetables' })
  orangeVegetables: string

  @Column({ name: 'drkgreen_vegetables' })
  drkgreenVegetables: string

  @Column({ name: 'starchy_vegetables' })
  starchyVegetables: string

  @Column({ name: 'other_vegetables' })
  otherVegetables: string

  @Column()
  fruits: string

  @Column()
  milk: string

  @Column()
  meats: string

  @Column()
  soy: string

  @Column({ name: 'drybeans_peas' })
  drybeansPeas: string

  @Column()
  oils: string

  @Column({ name: 'solid_fats' })
  solidFats: string

  @Column({ name: 'added_sugars' })
  addedSugars: string

  @Column()
  alcohol: string

  @Column()
  calories: string

  @Column({ name: 'saturated_fats' })
  saturatedFats: string

  @CreateDateColumn({ name: 'created_at' })
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;
}
