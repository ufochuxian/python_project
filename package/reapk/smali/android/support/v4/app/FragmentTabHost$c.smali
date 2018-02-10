.class final Landroid/support/v4/app/FragmentTabHost$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/z;
    .end annotation
.end field

.field final b:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final c:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation
.end field

.field d:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "_args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost$c;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost$c;->b:Ljava/lang/Class;

    .line 73
    iput-object p3, p0, Landroid/support/v4/app/FragmentTabHost$c;->c:Landroid/os/Bundle;

    .line 74
    return-void
.end method
