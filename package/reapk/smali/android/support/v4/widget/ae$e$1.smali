.class Landroid/support/v4/widget/ae$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/af$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/ae$e;->a(Landroid/support/v4/widget/ae$c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ae$c;

.field final synthetic b:Landroid/support/v4/widget/ae$e;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ae$e;Landroid/support/v4/widget/ae$c;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/ae$e;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v4/widget/ae$e$1;->b:Landroid/support/v4/widget/ae$e;

    iput-object p2, p0, Landroid/support/v4/widget/ae$e$1;->a:Landroid/support/v4/widget/ae$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/widget/ae$e$1;->a:Landroid/support/v4/widget/ae$c;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/ae$c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v4/widget/ae$e$1;->a:Landroid/support/v4/widget/ae$c;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/ae$c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
