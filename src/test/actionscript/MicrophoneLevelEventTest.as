package
{

import org.hamcrest.assertThat;
import org.hamcrest.core.isA;
import org.hamcrest.object.equalTo;
import org.hamcrest.object.isFalse;
import org.hamcrest.object.isTrue;
import org.hamcrest.object.notNullValue;
import org.hamcrest.object.nullValue;

import MicrophoneLevelEvent;

public class MicrophoneLevelEventTest
{
  private var microphoneLevelEvent:MicrophoneLevelEvent;

  [Test]
  public function should_have_static_constant_property_in_type_of_string():void {
    // then
    assertThat(MicrophoneLevelEvent.LEVEL_VALUE, isA(String));
  }

  [Test]
  public function should_have_type_property_equal_to_its_static_constant_property():void {
    // when
    microphoneLevelEvent = new MicrophoneLevelEvent(23);
    // then
    assertThat(microphoneLevelEvent.type, equalTo(MicrophoneLevelEvent.LEVEL_VALUE));
  }

  [Test]
  public function should_allow_getting_value_provided_while_initialization():void {
    // given
    var levelValue:Number = 23;
    // when
    microphoneLevelEvent = new MicrophoneLevelEvent(levelValue);
    // then
    assertThat( microphoneLevelEvent.getLevelValue(), equalTo(levelValue));
  }

}
}