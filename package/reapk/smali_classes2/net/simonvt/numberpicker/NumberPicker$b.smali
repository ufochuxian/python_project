.class Lnet/simonvt/numberpicker/NumberPicker$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lnet/simonvt/numberpicker/NumberPicker;

    .prologue
    .line 2195
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2199
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->j(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 2200
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$b;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->d(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2201
    return-void
.end method
