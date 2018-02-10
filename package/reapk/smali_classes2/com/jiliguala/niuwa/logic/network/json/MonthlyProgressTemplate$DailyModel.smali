.class public Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyModel"
.end annotation


# instance fields
.field public audio:I

.field public course:I

.field public day:I

.field public detail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DetailModel;",
            ">;"
        }
    .end annotation
.end field

.field public video:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;->detail:Ljava/util/ArrayList;

    return-void
.end method
