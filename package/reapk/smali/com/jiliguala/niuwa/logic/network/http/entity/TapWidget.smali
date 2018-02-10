.class public Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;
.super Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3827124dadad3205L


# instance fields
.field public resultMapping:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_mapping"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;-><init>()V

    return-void
.end method
