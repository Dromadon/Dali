import org.apache.hadoop.hive.serde2.io.TimestampWritable;
import org.apache.hadoop.io.Text;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.Locale;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Powered by o<+o (bjc).
 */

public class STRING_TO_DATE_DALI_UTest {

    @Test
    public void evaluate_shouldParseInput_AndReturn() {
        // Given
        Text input = new Text("01/Aug/1995:00:00:10 -0400");

        // When
        TimestampWritable result = new STRING_TO_DATE_DALI().evaluate(input);

        // Then
        TimestampWritable expected = new TimestampWritable(new Timestamp(807249610000L));
        assertThat(result).isEqualTo(expected);
    }
}
