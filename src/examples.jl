"""Examples"""

"""Plummer example"""
function example_Plummer()
    pot = Plummer(10.0^11*u"Msun",10.0u"kpc")
    x₀ = [10.0, 0.0, 0.0]u"kpc"
    v₀ = [0.0,50.0,0.0]u"km/s"
    t_range = (0.0,10.0).*u_T
    @show t_range
    sol = evolve(pot, x₀, v₀, t_range)
    return sol
end

function example_MiyamotoNagai()
    m_gal = 2.325e7*u"Msun"
    m =2856.0*m_gal  # Msun
    a = 4.22*u"kpc"     # kpc
    b =0.292*u"kpc"    # kpc
    pot = MiyamotoNagaiDisk(m, a, b)
    x₀ = [10.0, 0.0, 0.0]u"kpc"
    v₀ = [0.0,10.0,0.0]u"km/s"
    t_range = (0.0,10.0).*u_T
    sol = evolve(pot, x₀, v₀, t_range)
    return sol
end