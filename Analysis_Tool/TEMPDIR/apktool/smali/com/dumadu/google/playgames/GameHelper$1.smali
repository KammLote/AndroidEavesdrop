.class Lcom/dumadu/google/playgames/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadu/google/playgames/GameHelper;->onStart(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadu/google/playgames/GameHelper;


# direct methods
.method constructor <init>(Lcom/dumadu/google/playgames/GameHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadu/google/playgames/GameHelper;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/dumadu/google/playgames/GameHelper$1;->this$0:Lcom/dumadu/google/playgames/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dumadu/google/playgames/GameHelper$1;->this$0:Lcom/dumadu/google/playgames/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dumadu/google/playgames/GameHelper;->notifyListener(Z)V

    .line 400
    return-void
.end method
