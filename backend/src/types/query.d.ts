export interface QueryPaginate {
  take: number;
  skip: number;
  keyword: string | string[];
}

export interface Paginate {
  data: object[];
  total: number;
  page: number;
}
