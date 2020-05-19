import { getRepository, DeleteResult } from 'typeorm'
import { Food } from '../db/models/Food.entity'
import { FoodPaginate } from '../types/food'
import { QueryPaginate } from '../types/query'

class FoodRepository {
  public async findAll (query: QueryPaginate): Promise<FoodPaginate> {
    const { take, skip, keyword } = query
    const [foods, total] = await getRepository(Food).findAndCount({
      where: `display_name ilike '%${keyword}%'`,
      order: { displayName: 'ASC' },
      take: take,
      skip: skip
    })

    return {
      data: foods,
      total,
      page: skip
    }
  }

  public async findOne (id: number): Promise<Food> {
    return await getRepository(Food).findOne(id)
  }

  public async upsert (food: Food): Promise<Food> {
    return await getRepository(Food).save(food)
  }

  public async delete (id: number): Promise<DeleteResult> {
    return await getRepository(Food).delete(id)
  }
}

export default FoodRepository
