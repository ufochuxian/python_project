.class Lnet/simonvt/numberpicker/NumberPicker$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;

.field private b:Z


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 2160
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker$c;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/numberpicker/NumberPicker$c;
    .param p1, "x1"    # Z

    .prologue
    .line 2160
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2164
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->b:Z

    .line 2165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2169
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->b:Z

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2170
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->a:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$c;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->i(Lnet/simonvt/numberpicker/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2171
    return-void
.end method
