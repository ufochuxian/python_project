.class public Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xd8b05d43c9cc15bL


# instance fields
.field public endingSrc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ending"
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public interactMaxDur:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interact_dur"
    .end annotation
.end field

.field public openingSrc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opening"
    .end annotation
.end field

.field public resultCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_count"
    .end annotation
.end field

.field public resultSrc:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_src"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public specContent:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spec_content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transition:Z

.field public videoSrc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_src"
    .end annotation
.end field

.field public widgetType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpeakWidget()Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    const-string v1, "speak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
