.class public Lcom/mob/tools/RxMob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/RxMob$e;,
        Lcom/mob/tools/RxMob$d;,
        Lcom/mob/tools/RxMob$b;,
        Lcom/mob/tools/RxMob$a;,
        Lcom/mob/tools/RxMob$Thread;,
        Lcom/mob/tools/RxMob$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/RxMob$a",
            "<TT;>;)",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "onSubscribe":Lcom/mob/tools/RxMob$a;, "Lcom/mob/tools/RxMob$a<TT;>;"
    new-instance v0, Lcom/mob/tools/RxMob$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/RxMob$c;-><init>(Lcom/mob/tools/RxMob$1;)V

    .line 79
    .local v0, "s":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    invoke-static {v0, p0}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$a;

    .line 80
    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Lcom/mob/tools/RxMob$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "datas":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Lcom/mob/tools/RxMob$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$2;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->a(Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$c;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/mob/tools/RxMob$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "datas":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/mob/tools/RxMob$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->a(Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$c;

    move-result-object v0

    return-object v0
.end method
