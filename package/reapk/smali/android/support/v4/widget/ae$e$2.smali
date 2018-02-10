.class Landroid/support/v4/widget/ae$e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/ae$e;->a(Landroid/support/v4/widget/ae$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ae$a;

.field final synthetic b:Landroid/support/v4/widget/ae$e;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ae$e;Landroid/support/v4/widget/ae$a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/ae$e;

    .prologue
    .line 173
    iput-object p1, p0, Landroid/support/v4/widget/ae$e$2;->b:Landroid/support/v4/widget/ae$e;

    iput-object p2, p0, Landroid/support/v4/widget/ae$e$2;->a:Landroid/support/v4/widget/ae$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/ae$e$2;->a:Landroid/support/v4/widget/ae$a;

    invoke-interface {v0}, Landroid/support/v4/widget/ae$a;->a()Z

    move-result v0

    return v0
.end method
