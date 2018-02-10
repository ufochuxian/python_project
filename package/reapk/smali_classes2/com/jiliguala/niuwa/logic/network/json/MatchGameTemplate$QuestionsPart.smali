.class public Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionsPart"
.end annotation


# instance fields
.field public answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation
.end field

.field public audiourl:Ljava/lang/String;

.field public correct:Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

.field public cq:Ljava/lang/String;

.field public eq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->answers:Ljava/util/ArrayList;

    return-void
.end method
