.class final Lcom/google/android/gms/internal/pm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbV:Lcom/google/android/gms/internal/pk;

.field private synthetic zzcbW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pm;->zzcbV:Lcom/google/android/gms/internal/pk;

    iput-object p2, p0, Lcom/google/android/gms/internal/pm;->zzcbW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pm;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    iget-object v1, p0, Lcom/google/android/gms/internal/pm;->zzcbW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pf;->zza(Lcom/google/android/gms/internal/pf;Ljava/lang/String;)V

    return-void
.end method
