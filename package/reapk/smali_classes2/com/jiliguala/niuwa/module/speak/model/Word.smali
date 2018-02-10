.class public Lcom/jiliguala/niuwa/module/speak/model/Word;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public beg_pos:I

.field public content:Ljava/lang/String;

.field public dp_message:I

.field public end_pos:I

.field public global_index:I

.field public index:I

.field public sylls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Syll;",
            ">;"
        }
    .end annotation
.end field

.field public symbol:Ljava/lang/String;

.field public time_len:I

.field public total_score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
