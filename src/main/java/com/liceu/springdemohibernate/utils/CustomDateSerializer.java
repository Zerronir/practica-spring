package com.liceu.springdemohibernate.utils;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import java.io.IOException;
import java.time.LocalDate;

public class CustomDateSerializer extends StdSerializer<LocalDate> {
    protected CustomDateSerializer(Class<LocalDate> t) {
        super(t);
    }

    CustomDateSerializer() {
        this(null);
    }

    @Override
    public void serialize(LocalDate localDate, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeString(localDate.toString());
    }
}
