.class Landroid/support/v4/media/a$p$b;
.super Landroid/support/v4/media/a$p$a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/media/a$p;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$p;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Landroid/support/v4/media/a$p$b;->b:Landroid/support/v4/media/a$p;

    invoke-direct {p0, p1}, Landroid/support/v4/media/a$p$a;-><init>(Landroid/support/v4/media/a$p;)V

    .line 729
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 740
    iget-object v0, p0, Landroid/support/v4/media/a$p$b;->b:Landroid/support/v4/media/a$p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Landroid/support/v4/media/a$p$b;->b:Landroid/support/v4/media/a$p;

    .line 735
    invoke-static {p2}, Landroid/support/v4/media/a$k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 734
    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 736
    return-void
.end method
