import FoodRepository from '../repositories/food.repository'
import { FoodPaginate } from '../types/food'
import { QueryPaginate } from '../types/query'

const DEFAULT_PAGINATE: QueryPaginate = {
  keyword: '',
  skip: 0,
  take: 25
}

export class FoodService {
  private foodRepository: FoodRepository

  constructor () {
    this.foodRepository = new FoodRepository()
  }

  public async findAll (rows: string, offset: string, keyword: string): Promise<FoodPaginate> {
    const take = Number(rows || DEFAULT_PAGINATE.take)

    const skip = Number(offset || DEFAULT_PAGINATE.skip) * take

    const query = {
      take: take,
      skip: skip,
      keyword: String(keyword || DEFAULT_PAGINATE.keyword).replace(/'/g, "''")
    }

    return this.foodRepository.findAll(query)
  }
}
