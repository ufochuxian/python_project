.class Lcom/mob/a/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/f;


# direct methods
.method constructor <init>(Lcom/mob/a/f;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mob/a/f$2;->a:Lcom/mob/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mob/a/f$2;->a:Lcom/mob/a/f;

    invoke-static {v0}, Lcom/mob/a/f;->c(Lcom/mob/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mob/a/f$2;->a:Lcom/mob/a/f;

    invoke-static {v1, v0}, Lcom/mob/a/f;->a(Lcom/mob/a/f;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/mob/a/f$2;->a:Lcom/mob/a/f;

    invoke-static {v1, v0}, Lcom/mob/a/f;->b(Lcom/mob/a/f;Ljava/util/ArrayList;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
