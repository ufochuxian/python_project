.class Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;->parseJumpDict(Lcom/google/gson/JsonObject;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer$1;->a:Lcom/jiliguala/niuwa/module/interact/course/deserialize/IWidgetDeserializer;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
