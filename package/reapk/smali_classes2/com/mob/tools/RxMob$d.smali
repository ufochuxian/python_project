.class public Lcom/mob/tools/RxMob$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/tools/RxMob$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/RxMob$d;Lcom/mob/tools/RxMob$e;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/RxMob$d;
    .param p1, "x1"    # Lcom/mob/tools/RxMob$e;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/mob/tools/RxMob$d;->a(Lcom/mob/tools/RxMob$e;)V

    return-void
.end method

.method private a(Lcom/mob/tools/RxMob$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    .local p1, "warpper":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$d;->a:Lcom/mob/tools/RxMob$e;

    .line 179
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 191
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 183
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$d;->a:Lcom/mob/tools/RxMob$e;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mob/tools/RxMob$d;->a:Lcom/mob/tools/RxMob$e;

    invoke-virtual {v0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/RxMob$d;->a:Lcom/mob/tools/RxMob$e;

    .line 202
    :cond_0
    return-void
.end method
