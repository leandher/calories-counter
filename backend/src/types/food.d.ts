import { Food } from '../db/models/Food.entity'
import { Paginate } from './query'

export interface FoodPaginate extends Paginate {
  data: Food[];
}
