.class public Lorg/jsoup/select/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/jsoup/select/f;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/f;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jsoup/select/f;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/jsoup/select/e;->a:Lorg/jsoup/select/f;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;)V
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/h;

    .prologue
    .line 26
    move-object v1, p1

    .line 27
    .local v1, "node":Lorg/jsoup/nodes/h;
    const/4 v0, 0x0

    .line 29
    .local v0, "depth":I
    :goto_0
    if-eqz v1, :cond_2

    .line 30
    iget-object v2, p0, Lorg/jsoup/select/e;->a:Lorg/jsoup/select/f;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/f;->a(Lorg/jsoup/nodes/h;I)V

    .line 31
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->R()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/h;->e(I)Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->Y()Lorg/jsoup/nodes/h;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    .line 36
    iget-object v2, p0, Lorg/jsoup/select/e;->a:Lorg/jsoup/select/f;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/f;->b(Lorg/jsoup/nodes/h;I)V

    .line 37
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->T()Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 40
    :cond_1
    iget-object v2, p0, Lorg/jsoup/select/e;->a:Lorg/jsoup/select/f;

    invoke-interface {v2, v1, v0}, Lorg/jsoup/select/f;->b(Lorg/jsoup/nodes/h;I)V

    .line 41
    if-ne v1, p1, :cond_3

    .line 46
    :cond_2
    return-void

    .line 43
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->Y()Lorg/jsoup/nodes/h;

    move-result-object v1

    goto :goto_0
.end method
