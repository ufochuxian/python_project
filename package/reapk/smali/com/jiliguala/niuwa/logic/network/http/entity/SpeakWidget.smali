.class public Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;
.super Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x48c278d1174909bbL


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;",
            ">;"
        }
    .end annotation
.end field

.field public resultMapping:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_mapping"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;-><init>()V

    return-void
.end method
