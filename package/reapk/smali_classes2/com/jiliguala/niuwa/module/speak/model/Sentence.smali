.class public Lcom/jiliguala/niuwa/module/speak/model/Sentence;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public beg_pos:I

.field public content:Ljava/lang/String;

.field public end_pos:I

.field public index:I

.field public time_len:I

.field public total_score:F

.field public word_count:I

.field public words:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
