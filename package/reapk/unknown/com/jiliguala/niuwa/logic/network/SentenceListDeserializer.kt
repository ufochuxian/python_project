package com.jiliguala.niuwa.logic.network

import com.google.gson.Gson
import com.google.gson.JsonDeserializationContext
import com.google.gson.JsonDeserializer
import com.google.gson.JsonElement
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import java.lang.reflect.Type

class SentenceListDeserializer : JsonDeserializer<List<PicBookTemplate.Data.Page.Sentence>> {

    val gson = Gson()

    override fun deserialize(json: JsonElement, typeOfT: Type?, context: JsonDeserializationContext?): List<PicBookTemplate.Data.Page.Sentence> {
        var sentenceList: ArrayList<PicBookTemplate.Data.Page.Sentence> = ArrayList()
        if (json.isJsonArray) {
            sentenceList = gson.fromJson(json, typeOfT)
        } else {
            val sentence = gson.fromJson(json, PicBookTemplate.Data.Page.Sentence::class.java)
            sentenceList.add(sentence)
        }
        return sentenceList
    }

}