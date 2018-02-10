.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v6, 0x7f0f0117

    const v3, 0x7f080114

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1184
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 1131
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2002(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;I)I

    .line 1132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 1133
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0254

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1135
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1136
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1140
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1150
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 1151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1152
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1155
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1157
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1159
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1167
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 1168
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1169
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1170
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1171
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1172
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1174
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 1176
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->run:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1178
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$4;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$2500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
