.class public Lcom/bumptech/glide/load/engine/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/d;

.field private final b:Lcom/bumptech/glide/g/g;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/g/g;Lcom/bumptech/glide/load/engine/d;)V
    .locals 0
    .param p1, "cb"    # Lcom/bumptech/glide/g/g;
    .param p2, "engineJob"    # Lcom/bumptech/glide/load/engine/d;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c$c;->b:Lcom/bumptech/glide/g/g;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c$c;->a:Lcom/bumptech/glide/load/engine/d;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c$c;->a:Lcom/bumptech/glide/load/engine/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c$c;->b:Lcom/bumptech/glide/g/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/d;->b(Lcom/bumptech/glide/g/g;)V

    .line 58
    return-void
.end method
