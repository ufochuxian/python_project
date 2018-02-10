.class final Lcom/mob/tools/RxMob$1;
.super Lcom/mob/tools/RxMob$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob;->a([Ljava/lang/Object;)Lcom/mob/tools/RxMob$c;
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
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mob/tools/RxMob$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mob/tools/RxMob$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/mob/tools/RxMob$d;)V
    .locals 4
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
    .line 86
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$1;->a:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 87
    .local v0, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
