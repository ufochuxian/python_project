.class Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/views/book/PageView;->startSpotlighting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView;[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 229
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$100(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iget v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    aget-object v2, v10, v11

    .line 235
    .local v2, "currentInstruction":Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$600(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->getCurrentAudioTime()J

    move-result-wide v0

    .line 237
    .local v0, "audioPosition":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gez v10, :cond_3

    .line 240
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->stopSpotlighting(Z)V

    .line 242
    iget v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_0

    .line 244
    iget-object v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    :goto_1
    aget-object v10, v11, v10

    iget-wide v6, v10, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->duration:J

    .line 246
    .local v6, "nextInstructionDelay":J
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    new-instance v11, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;

    invoke-direct {v11, p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;)V

    invoke-virtual {v10, v11, v6, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 244
    .end local v6    # "nextInstructionDelay":J
    :cond_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 260
    :cond_3
    iget-wide v10, v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->start:J

    cmp-long v10, v0, v10

    if-ltz v10, :cond_8

    .line 268
    :goto_2
    iget v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_4

    .line 270
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iget v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    aget-object v10, v10, v11

    iget-wide v10, v10, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    cmp-long v10, v0, v10

    if-ltz v10, :cond_4

    .line 272
    iget v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    .line 273
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iget v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    aget-object v2, v10, v11

    goto :goto_2

    .line 284
    :cond_4
    iget v3, v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->offset:I

    .line 285
    .local v3, "offset":I
    iget v8, v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->span:I

    .line 291
    .local v8, "span":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v3, v10, :cond_5

    .line 292
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 295
    :cond_5
    add-int v10, v3, v8

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v11}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_6

    .line 296
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v8, v10, v3

    .line 301
    :cond_6
    new-instance v9, Landroid/text/SpannableString;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 302
    .local v9, "spannableText":Landroid/text/Spannable;
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$800()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v11, v3, v8

    const/4 v12, 0x0

    invoke-interface {v9, v10, v3, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 303
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$100(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 304
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->access$500(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_7
    iget v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    .line 311
    iget v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    array-length v11, v11

    if-lt v10, v11, :cond_8

    .line 314
    iget-wide v4, v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->duration:J

    .line 316
    .local v4, "duration":J
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    new-instance v11, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$2;

    invoke-direct {v11, p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3$2;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;)V

    invoke-virtual {v10, v11, v4, v5}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 331
    .end local v3    # "offset":I
    .end local v4    # "duration":J
    .end local v8    # "span":I
    .end local v9    # "spannableText":Landroid/text/Spannable;
    :cond_8
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->b:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iget v11, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->a:I

    aget-object v10, v10, v11

    iget-wide v10, v10, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->start:J

    iget-wide v12, v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;->end:J

    sub-long v6, v10, v12

    .line 332
    .restart local v6    # "nextInstructionDelay":J
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;->c:Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-virtual {v10, p0, v6, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
