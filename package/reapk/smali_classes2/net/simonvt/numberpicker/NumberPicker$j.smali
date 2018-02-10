.class Lnet/simonvt/numberpicker/NumberPicker$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field a:Lnet/simonvt/numberpicker/NumberPicker$a;

.field final synthetic b:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method private constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 2
    .param p1, "this$0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 2212
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->b:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2214
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$a;

    invoke-direct {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$a;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    .line 2216
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/simonvt/numberpicker/NumberPicker;
    .param p2, "x1"    # Lnet/simonvt/numberpicker/NumberPicker$1;

    .prologue
    .line 2208
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2227
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker$a;->a(II)V

    .line 2228
    :cond_0
    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2219
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    invoke-virtual {v0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 2223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
