.class final Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
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
    .line 272
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b:Ljava/lang/Class;

    .line 275
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->c:Landroid/os/Bundle;

    .line 276
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->d:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->c:Landroid/os/Bundle;

    return-object v0
.end method
