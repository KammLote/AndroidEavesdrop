.class final Lcom/google/android/gms/internal/hq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbUt:Lcom/google/android/gms/internal/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ho;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hq;->zzbUt:Lcom/google/android/gms/internal/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/hq;->zzbUt:Lcom/google/android/gms/internal/ho;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ho;->doFrame(J)V

    return-void
.end method
