.class public abstract Lcom/mob/tools/RxMob$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/RxMob$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/RxMob$a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lcom/mob/tools/RxMob$b;, "Lcom/mob/tools/RxMob$b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mob/tools/RxMob$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/mob/tools/RxMob$b;, "Lcom/mob/tools/RxMob$b<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$d;->b()V

    .line 164
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$b;->b(Lcom/mob/tools/RxMob$d;)V

    .line 165
    invoke-virtual {p1}, Lcom/mob/tools/RxMob$d;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract b(Lcom/mob/tools/RxMob$d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
