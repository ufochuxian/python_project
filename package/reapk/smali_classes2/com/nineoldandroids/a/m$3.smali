.class final Lcom/nineoldandroids/a/m$3;
.super Lcom/nineoldandroids/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nineoldandroids/util/b",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/b/a/a;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/nineoldandroids/a/m$3;->a(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # I

    .prologue
    .line 124
    invoke-static {p1}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/b/a/a;->a(I)V

    .line 125
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/m$3;->a(Landroid/view/View;I)V

    return-void
.end method
