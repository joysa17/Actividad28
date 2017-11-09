class EmployeesController < ApplicationController

def create
	@employee = Employee.new(employee_params)
		@employee.company_id = params[:company_id]
		@employee.save
		redirect_to company_path(@employee.company)
end

def destroy
	@employee = Employee.find(params[:id]).destroy
	redirect_to company_path(@employee)
end


private
def employee_params
	params.require(:employee).permit(:first_name, :last_name, :email, :area_id)

end

end
