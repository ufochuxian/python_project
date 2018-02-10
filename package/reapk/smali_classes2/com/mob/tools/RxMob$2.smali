.class final Lcom/mob/tools/RxMob$2;
.super Lcom/mob/tools/RxMob$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob;->a(Ljava/util/Iterator;)Lcom/mob/tools/RxMob$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/RxMob$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mob/tools/RxMob$2;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/mob/tools/RxMob$d;)V
    .locals 1
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

    .prologue
    .line 96
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/RxMob$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mob/tools/RxMob$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
