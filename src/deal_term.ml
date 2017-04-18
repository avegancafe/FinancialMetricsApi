type units = {
  abbr: string;
  rentable: string;
  per: string;
  squared: string;
}

type approval_req = {
  id: int;
  deal_term_id: int;
  requester_comment: string;
  requester_id: int;
  recommendation: string;
  earliest_pending_step: string;
  subhead: string;
  earliest_pending_step_id: int;
  active_step: string;
  security_deposit_type_display: string;
  security_deposit: float;
  capital: float;
  tenant_risk_description: string;
  activity_log_id: int;
  requester: string;
}

type reimbursable_expense = {
  amount: string;
  description: string;
  reimbursed: bool;
  units: string;
}

type base_rent = {
  begin_in: int;
  rent: string;
  period: string;
  duration: int;
}

type tenant_improvement = {
  occurrence_month: int;
  allowance: string;
  allowance_unit: string;
  _destroy: bool;
}

type building_improvement = {
  occurrence_month: int;
  allowance: string;
  allowance_unit: string;
  _destroy: bool;
}

type other_credit = {
  occurrence_month: int;
  allowance: string;
  allowance_unit: string;
  _destroy: bool;
}

type other_revenue = {
  other_revenue_type: string;
  begin_in: int;
  amount: string;
  period: string;
  _destroy: bool;
}

type rent_escalation = {
  begin_in: int;
  duration: int;
  escalation_type: string;
  recurrence_interval: int;
  _destroy: bool;
}

type commission_period = {
  start_month: int;
  amount: float;
}

type commission = {
  date: string;
  firm: string;
  rep_type: string;
  unit: string;
  commission_scales_attributes: commission_period list;
}

type rlo = {
  begin_in: int;
  duration: int;
  amount: float;
  units: string;
  _destroy: bool;
}


type deal_term = {
  activity_log_id: int;
  analysis_type: string;
  approval_request_id: int;
  building_improvements_sum: int;
  can_update: bool;
  capital: int;
  capital_per_sqft: int;
  commencement_date: string;
  concessions: string;
  currency_symbol: string;
  edit_locked: bool;
  entered_date: string;
  execution_date: string;
  first_natural_breakpoint: int;
  has_comp: bool;
  health_ratio: float;
  id: int;
  internal_rate_of_return: int;
  latest: bool;
  lease_structure: string;
  miscellaneous_description: string;
  ner_override: string;
  net_cash_flow: string;
  net_effective_rent: string;
  npv: string;
  npv_disc_rate: string;
  number_of_free_rent_months: int;
  payback: int;
  rentable_area: int;
  retail_estimated_sales: float;
  retail_growth_rate: float;
  retail_percent_rent: float;
  retail_unnatural_breakpoint: float;
  security_deposit: float;
  security_deposit_type: string;
  tenant_improvements_sum: float;
  total_deal_value: string;
  total_lease_term: int;
  total_rent: string;
  units_label: units;
  user_approval_status: string;
  total_rent_per_sqft_per_year: string;
  capital_per_sqft_per_year: int;
  approval_request: approval_req;
  label: string;
  quick_term_incompatible: bool;
  tenant_risk_description: string;
  total_income: int;
  reimbursable_expenses_attributes: reimbursable_expense list;
  base_rents_attributes:base_rent list;
  tenant_improvements_attributes: tenant_improvement list;
  building_improvements_attributes: building_improvement list;
  other_credits_attributes: other_credit list;
  other_revenues_attributes: other_revenue list;
  rent_escalations_attributes: rent_escalation list;
  commissions_attributes: commission;
  remaining_lease_obligations_attributes: rlo;
}
