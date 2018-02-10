.class Landroid/support/v4/view/a/r$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/a/r$c;->a(Landroid/support/v4/view/a/r;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/r;

.field final synthetic b:Landroid/support/v4/view/a/r$c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/r$c;Landroid/support/v4/view/a/r;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/a/r$c;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/v4/view/a/r$c$1;->b:Landroid/support/v4/view/a/r$c;

    iput-object p2, p0, Landroid/support/v4/view/a/r$c$1;->a:Landroid/support/v4/view/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 129
    iget-object v1, p0, Landroid/support/v4/view/a/r$c$1;->a:Landroid/support/v4/view/a/r;

    .line 130
    invoke-virtual {v1, p1}, Landroid/support/v4/view/a/r;->a(I)Landroid/support/v4/view/a/h;

    move-result-object v0

    .line 131
    .local v0, "compatInfo":Landroid/support/v4/view/a/h;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v5, p0, Landroid/support/v4/view/a/r$c$1;->a:Landroid/support/v4/view/a/r;

    .line 113
    invoke-virtual {v5, p1, p2}, Landroid/support/v4/view/a/r;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/view/a/h;>;"
    if-nez v0, :cond_1

    .line 115
    const/4 v4, 0x0

    .line 123
    :cond_0
    return-object v4

    .line 117
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/a/h;

    .line 121
    .local v2, "infoCompat":Landroid/support/v4/view/a/h;
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/view/a/r$c$1;->a:Landroid/support/v4/view/a/r;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/r;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2
    .param p1, "focus"    # I

    .prologue
    .line 140
    iget-object v1, p0, Landroid/support/v4/view/a/r$c$1;->a:Landroid/support/v4/view/a/r;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/a/r;->b(I)Landroid/support/v4/view/a/h;

    move-result-object v0

    .line 141
    .local v0, "compatInfo":Landroid/support/v4/view/a/h;
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
