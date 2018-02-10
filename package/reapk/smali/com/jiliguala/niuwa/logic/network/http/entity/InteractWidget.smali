.class public Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;
.super Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7d08f0a873789338L


# instance fields
.field public correctAnswers:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correct_answers"
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

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field public resultItemNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_item_num"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;-><init>()V

    return-void
.end method
