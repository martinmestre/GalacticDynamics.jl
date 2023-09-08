"""Types"""

import Base.:+

"""Abstract types"""
abstract type AbstractCosmos end

abstract type AbstractGeometry <: AbstractCosmos end
abstract type AbstractSpaceTime <: AbstractGeometry end
abstract type AbstractPotential <: AbstractGeometry end

abstract type AbstractDistribution <: AbstractCosmos end
abstract type AbstractDiscreteDistribution <: AbstractDistribution end
abstract type AbstractContinuousDistribution <: AbstractDistribution end

abstract type AbstractParticle <: AbstractDiscreteDistribution end
abstract type AbstractEnsemble <: AbstractDiscreteDistribution end
abstract type AbstractElementaryParticle <: AbstractParticle end
abstract type AbstractMacroParticle <: AbstractParticle end

abstract type AbstractGlobularCluster <: AbstractEnsemble end
abstract type AbstractGalaxy <: AbstractEnsemble end
abstract type AbstractHalo <: AbstractEnsemble end
abstract type AbstractDisk <: AbstractEnsemble end
abstract type AbstractBulge <: AbstractEnsemble end

abstract type AbstractContinuousGlobularCluster <: AbstractContinuousDistribution end
abstract type AbstractContinuousGalaxy <:AbstractContinuousDistribution end
abstract type AbstractContinuousHalo <:AbstractContinuousDistribution end
abstract type AbstractContinuousSubHalo <:AbstractContinuousDistribution end
abstract type AbstractContinuousDisk <:AbstractContinuousDistribution end
abstract type AbstractContinuousBulge <:AbstractContinuousDistribution end


Base.:+(a::Union{<:AbstractPotential,Vector{<:AbstractPotentail}},
        b::Union{<:AbstractPotential,Vector{<:AbstractPotentail}})
        ::Vector{<:AbstractPotential} = vcat(a,b)


"""Concrete types (structs)"""


@with_kw struct Plummer{M,L} <: AbstractPotential
        m::M
        b::L
        x::Vector{L} = zeros(3)
end

@with_kw struct Particle{M,L} <: AbstractMacroParticle
        m::M
        x::Vector{L}
end

@with_kw struct TestParticle{L} <: AbstractMacroParticle
        x::Vector{L}
end