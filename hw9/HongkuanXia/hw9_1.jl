using ProblemReductions

circuit = @circuit begin
    c = a ∧ b
    s = a ⊻ b
end
circuitsat = CircuitSAT(circuit)
result = reduceto(SpinGlass{<:SimpleGraph}, circuitsat)