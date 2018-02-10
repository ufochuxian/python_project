.class public Lcom/jiliguala/niuwa/module/speak/model/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public beg_pos:I

.field public category:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public end_pos:I

.field public except_info:Ljava/lang/String;

.field public is_rejected:Z

.field public language:Ljava/lang/String;

.field public sentences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/model/Sentence;",
            ">;"
        }
    .end annotation
.end field

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
