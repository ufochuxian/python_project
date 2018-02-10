.class Lnet/simonvt/numberpicker/NumberPicker$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field final synthetic c:Lnet/simonvt/numberpicker/NumberPicker;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 2067
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2071
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->d:I

    .line 2072
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2078
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->g:I

    .line 2079
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->f:I

    .line 2080
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2081
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->e(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2083
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    .line 2085
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2086
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->g(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    .line 2089
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 2092
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 2093
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->g:I

    .line 2094
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->f:I

    .line 2095
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2096
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2099
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 2100
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->g:I

    .line 2101
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->f:I

    .line 2102
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2103
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2107
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->g:I

    packed-switch v0, :pswitch_data_0

    .line 2141
    :goto_0
    return-void

    .line 2109
    :pswitch_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->f:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2111
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2112
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2115
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2116
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2121
    :pswitch_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->f:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2123
    :pswitch_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->e(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2125
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2124
    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2127
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->e(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2128
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->f(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2131
    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->g(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2132
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2133
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    .line 2132
    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2135
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->g(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2136
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$h;->c:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->h(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2109
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2121
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
