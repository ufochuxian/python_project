.class public final Lcom/mob/tools/RxMob$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
.field private a:Lcom/mob/tools/RxMob$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/mob/tools/RxMob$Thread;

.field private c:Lcom/mob/tools/RxMob$Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/RxMob$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/RxMob$1;

    .prologue
    .line 103
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    invoke-direct {p0}, Lcom/mob/tools/RxMob$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$a;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/RxMob$c;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->a:Lcom/mob/tools/RxMob$a;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$a;)Lcom/mob/tools/RxMob$a;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/RxMob$c;
    .param p1, "x1"    # Lcom/mob/tools/RxMob$a;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mob/tools/RxMob$c;->a:Lcom/mob/tools/RxMob$a;

    return-object p1
.end method

.method static synthetic b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/RxMob$c;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->b:Lcom/mob/tools/RxMob$Thread;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;
    .locals 0
    .param p1, "thread"    # Lcom/mob/tools/RxMob$Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$c;->c:Lcom/mob/tools/RxMob$Thread;

    .line 114
    return-object p0
.end method

.method public a(Lcom/mob/tools/RxMob$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->a:Lcom/mob/tools/RxMob$a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->c:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_1

    .line 125
    const/4 v0, 0x0

    new-instance v1, Lcom/mob/tools/RxMob$c$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$c$1;-><init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V

    invoke-static {v0, v1}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->c:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_2

    .line 132
    new-instance v0, Lcom/mob/tools/RxMob$c$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/RxMob$c$2;-><init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V

    .line 136
    invoke-virtual {v0}, Lcom/mob/tools/RxMob$c$2;->start()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/RxMob$c;->a:Lcom/mob/tools/RxMob$a;

    new-instance v1, Lcom/mob/tools/RxMob$e;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$e;-><init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$a;->a(Lcom/mob/tools/RxMob$d;)V

    goto :goto_0
.end method

.method public b(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;
    .locals 0
    .param p1, "thread"    # Lcom/mob/tools/RxMob$Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    iput-object p1, p0, Lcom/mob/tools/RxMob$c;->b:Lcom/mob/tools/RxMob$Thread;

    .line 119
    return-object p0
.end method

.method public b(Lcom/mob/tools/RxMob$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    .local p1, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 145
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$c;

    .line 146
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$c;->a(Lcom/mob/tools/RxMob$d;)V

    .line 147
    return-void
.end method
