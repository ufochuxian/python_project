.class Lcom/bumptech/glide/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/d/m;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/d/m;)V
    .locals 0
    .param p1, "requestTracker"    # Lcom/bumptech/glide/d/m;

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/o$e;->a:Lcom/bumptech/glide/d/m;

    .line 794
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/bumptech/glide/o$e;->a:Lcom/bumptech/glide/d/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/m;->e()V

    .line 801
    :cond_0
    return-void
.end method