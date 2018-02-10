.class Lcom/pingplusplus/android/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
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

.field e:Lcom/pingplusplus/android/d;

.field final synthetic f:Lcom/pingplusplus/android/h;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/h;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/pingplusplus/android/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pingplusplus/android/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    iput-object p1, p0, Lcom/pingplusplus/android/h$a;->f:Lcom/pingplusplus/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/pingplusplus/android/h$a;->a:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/pingplusplus/android/h$a;->b:Ljava/lang/Object;

    .line 286
    iput-object p4, p0, Lcom/pingplusplus/android/h$a;->c:Ljava/lang/String;

    .line 287
    iput-object p5, p0, Lcom/pingplusplus/android/h$a;->d:Ljava/util/Map;

    .line 288
    iput-object p6, p0, Lcom/pingplusplus/android/h$a;->e:Lcom/pingplusplus/android/d;

    .line 289
    return-void
.end method
