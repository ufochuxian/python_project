.class public Lcom/pingplusplus/android/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Lcom/pingplusplus/android/d;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/pingplusplus/android/g;->a:I

    .line 33
    iput-object p2, p0, Lcom/pingplusplus/android/g;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/pingplusplus/android/g;->c:Ljava/util/Map;

    .line 35
    iput-object p4, p0, Lcom/pingplusplus/android/g;->d:Lcom/pingplusplus/android/d;

    .line 36
    return-void
.end method
