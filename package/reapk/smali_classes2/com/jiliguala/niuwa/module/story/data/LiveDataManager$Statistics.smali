.class public Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Statistics"
.end annotation


# instance fields
.field public operations:I

.field public operations_expired:I

.field public operations_failed:I

.field public operations_loading:I

.field public operations_not_started:I

.field public operations_success:I

.field final synthetic this$0:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;)V
    .locals 4
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->this$0:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations:I

    .line 106
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_not_started:I

    .line 107
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_loading:I

    .line 108
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_success:I

    .line 109
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_failed:I

    .line 110
    iput v1, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_expired:I

    .line 113
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;

    .line 114
    .local v0, "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations:I

    .line 115
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$1;->a:[I

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;->getState()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_not_started:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_not_started:I

    goto :goto_0

    .line 120
    :pswitch_1
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_loading:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_loading:I

    goto :goto_0

    .line 123
    :pswitch_2
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_success:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_success:I

    goto :goto_0

    .line 126
    :pswitch_3
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_failed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_failed:I

    goto :goto_0

    .line 129
    :pswitch_4
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_expired:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;->operations_expired:I

    goto :goto_0

    .line 133
    .end local v0    # "op":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
    :cond_0
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager$Statistics;-><init>(Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;)V

    return-void
.end method
