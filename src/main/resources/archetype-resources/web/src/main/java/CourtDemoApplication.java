#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package};

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * start  point
 *
 * @author: Foy Lian
 * Date: 4/15/2019
 * Time: 11:42 AM
 */
@SpringBootApplication(scanBasePackages = {"org.lotus.carp", "${package}"})
@EnableScheduling
@EnableJpaAuditing
public class CourtDemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(CourtDemoApplication.class, args);
    }
}
