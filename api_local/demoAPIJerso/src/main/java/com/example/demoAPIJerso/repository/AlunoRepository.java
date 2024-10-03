package com.example.demoAPIJerso.repository;

import com.example.demoAPIJerso.model.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlunoRepository extends JpaRepository<Aluno, Integer> {

}
