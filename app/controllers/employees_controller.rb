class EmployeesController <ApplicationController
  before_action :set_employee ,only: [ :edit, :update, :show  , :destroy]
    def index #all
     @employees=Employee.all()
    end
    def new
      @employee=Employee.new
    end
    def edit
    end
    def update
      if  @employee.update(employee_params)
                redirect_to employees_path
      else
          render :edit
      end

    end
    def show  #by id

    end
    # create
    def create

         if @employee.save
                     redirect_to employees_path , notice: "Employee Successfully created"
         else
          render :new
         end

    end
    def destroy
            if @employee.destroy
                            redirect_to employees_path , notice: "Employee deleted"
            end
    end
   private
   def employee_params
         params.require(:employee).permit(:first_name,:last_name,:personal_email,:salary,:pincode,:city,:state,:address_line_1,:country)
   end
   def set_employee
         @employee=Employee.find(params[:id])
   end
end
