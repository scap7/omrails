class EmployeesController <ApplicationController
    def index #all
     @employees=Employee.all()
    end
    def new
      @employee=Employee.new
    end
    def edit
      @employee=Employee.find(param[:id])
    end
    def show  #by id

    end
    # create
    def create
     puts  employee_params
      @employee=Employee.new(employee_params)

         if @employee.save
                     redirect_to employees_path , notice: "Employee Successfully created"
         else
          render :new
         end

    end
   private
   def employee_params
         params.require(:employee).permit(:first_name,:last_name,:personal_email,:salary,:pincode,:city,:state,:address_line_1,:country)
   end
end
