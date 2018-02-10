.class public final Lcom/bumptech/glide/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/o$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/o;

.field private final b:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lcom/bumptech/glide/o$b;, "Lcom/bumptech/glide/o$b<TA;TT;>;"
    .local p2, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TA;TT;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/bumptech/glide/o$b;->b:Lcom/bumptech/glide/load/b/l;

    .line 715
    iput-object p3, p0, Lcom/bumptech/glide/o$b;->c:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/o$b;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o$b;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/o$b;->b:Lcom/bumptech/glide/load/b/l;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/o$b;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/o$b;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/o$b;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/o$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lcom/bumptech/glide/o$b",
            "<TA;TT;>.a;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lcom/bumptech/glide/o$b;, "Lcom/bumptech/glide/o$b<TA;TT;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Lcom/bumptech/glide/o$b$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/o$b$a;-><init>(Lcom/bumptech/glide/o$b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/o$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/o$b",
            "<TA;TT;>.a;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lcom/bumptech/glide/o$b;, "Lcom/bumptech/glide/o$b<TA;TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    new-instance v0, Lcom/bumptech/glide/o$b$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/o$b$a;-><init>(Lcom/bumptech/glide/o$b;Ljava/lang/Object;)V

    return-object v0
.end method
